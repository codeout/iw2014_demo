import json
import re
from httplib import HTTPConnection
from pyzabbix import ZabbixAPI

API_SERVER = 'localhost:3000'

class Device:
  def __init__(self, device):
    self.device = device

  def device_id(self):
    session = HTTPConnection(API_SERVER)
    session.request('GET', '/devices.json?name=%s' % self.device )

    response = json.load(session.getresponse())
    return response[0]['id']


class GigabitEthernet:
  def __init__(self, device_id, name):
    self.device_id = device_id
    self.name = name

  def gigabit_ethernet_id(self):
    session = HTTPConnection(API_SERVER)
    session.request('GET', '/gigabit_ethernets.json?device_id=%s&name=%s' % (self.device_id, self.name) )

    response = json.load(session.getresponse())
    return response[0]['id']


class Ipv4:
  def __init__(self, gigabit_ethernet_id):
    self.gigabit_ethernet_id = gigabit_ethernet_id

  def addresses(self):
    session = HTTPConnection(API_SERVER)
    session.request('GET', '/ipv4s.json?gigabit_ethernet_id=%s' % self.gigabit_ethernet_id)

    response = json.load(session.getresponse())
    return map(lambda x: re.sub(r'/.*$', '', x['address']), response)


device = 'device1'
interface = 'ge-0/0/1'

device_id = Device(device).device_id()
interface_id = GigabitEthernet(device_id, interface).gigabit_ethernet_id()
addresses = Ipv4(interface_id).addresses()

api = ZabbixAPI('http://localhost:8080/zabbix')
api.login('admin', 'zabbix')

hosts = api.host.get(filter={'name': 'device1'},selectInterfaces=['interfaceid'])

if hosts:
  api.item.create(
    hostid = hosts[0]['hostid'],
    name = 'ping to %s' % interface,
    key_ = 'icmpping[%s]' % addresses[0] ,
    type = 0,        # Numeric (unsigned)
    value_type = 3,  # Decimal
    interfaceid = hosts[0]['interfaces'][0]['interfaceid'],
    delay = 30
  )

