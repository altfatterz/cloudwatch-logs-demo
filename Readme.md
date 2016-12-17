If the application context is started inside an EC2 instance, then the region can automatically be fetched 
from the instance metadata and therefore must not be configured statically.
 
Instance Metadata and User Data 
 
curl http://169.254.169.254/latest/meta-data/

