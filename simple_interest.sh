import urllib.request, urllib.parse, urllib.error
import xml.etree.ElementTree as ET
import ssl
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE
url=input("enter url")
uh = urllib.request.urlopen(url, context=ctx)
data=uh.read()
numb=ET.fromstring(data)
inlist=list()
list=numb.findall('comments/comment')
print(numb.find('.//count').text)
sum=0
for n in list:
    sum=sum+int(n.find('.//count').text)
print(sum)
