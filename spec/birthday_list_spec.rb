require 'birthday_list'

describe Birthday do
  let(:bday) {
    Birthday.new
  }

  it 'create instance of Birthday' do
    expect(bday).to be_instance_of(Birthday)
  end

  it '.add takes name and d.o.b' do
    expect {bday.add("Me", "1996-04-17")}.to_not raise_error
  end

  it '.add returns an array' do
    expect(bday.add("Me", "1996-04-17")).to be_instance_of(Array)
  end
end
