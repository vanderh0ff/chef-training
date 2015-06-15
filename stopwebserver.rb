service 'httpd' do
  action [:stop, :disable]
end

file '/var/www/html/index.html' do
  action :delete
end

# start security here
service 'iptables' do
  action :start
end
