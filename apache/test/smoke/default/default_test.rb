# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

if os[:family] == 'debian'
  describe package('apache2') do
    it { should be_installed }
  end
elsif os[:family] == 'redhat'
  describe package('httpd') do
    it { should be_installed }
  end
else
  describe package('apache2') do
    it { should be_installed }
  end 
end

describe port(80) do
  it { should be_listening }
end


describe http('http://localhost:80', enable_remote_worker: true) do
  its('status') { should eq 200 }
end