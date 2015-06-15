package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

# no need for web standards here
file '/var/www/html/index.html' do
  content '<html>
  <body>
    <h1> hello world</h1>
  </body>
  </html>'
end

# no need for security here
service 'iptables' do
  action :stop
end
