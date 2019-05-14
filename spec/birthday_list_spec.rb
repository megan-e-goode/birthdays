require 'birthday_list'

describe Birthday do
  it 'create instance of Birthday' do
    bday = Birthday.new

    expect(bday).to be_instance_of(Birthday)
  end

  it 'responds to .add' do
    bday = Birthday.new
    expect(bday).to respond_to(:add)
  end

  it '.add takes name and d.o.b' do
    bday = Birthday.new
    expect {bday.add("Me", "1996-04-17")}.to_not raise_error
  end
end
