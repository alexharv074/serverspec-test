require "spec_helper"

describe file("/etc/passwd") do
  it { is_expected.to be_file }
  its(:content) { is_expected.to match /root/ }
end

describe "passwd file" do
  it { expect(file("/etc/passwd")).to be_file }
  it { expect(file("/etc/passwd").content).to match /root/ }
end

describe file("/etc/passwd") do
  it { expect(subject).to be_file }
  it { expect(subject.content).to match /root/ }
end
