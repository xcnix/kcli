export ORG="Karmalabs"
export LOCATION="Madrid"
export PASSWORD="unix1234"
rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
yum -y install epel-release https://yum.theforeman.org/releases/1.15/el7/x86_64/foreman-release.rpm
yum -y localinstall http://fedorapeople.org/groups/katello/releases/yum/3.5/katello/el7/x86_64/katello-repos-latest.rpm
yum -y install foreman-release-scl wget katello
#yum-y update
yum -y install katello
echo `hostname -I` `hostname -s`.default `hostname -s` >> /etc/hosts
foreman-installer --scenario katello --foreman-admin-username admin  --foreman-admin-password $PASSWORD --foreman-initial-location $LOCATION --foreman-initial-organization $ORG
