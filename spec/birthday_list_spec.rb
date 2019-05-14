require 'birthday_list'

describe Birthday do
  let(:bday) {
    Birthday.new
  }

  # Add
  it 'create instance of Birthday' do
    expect(bday).to be_instance_of(Birthday)
  end

  it '.add takes name and d.o.b' do
    expect {bday.add("Me", "1996-04-17")}.to_not raise_error
  end

  it '.add to birthday_list array' do
    bday.add("Me", "1996-04-17")
    expect(bday.birthday_list).to include({ name: "Me", dob: "1996-04-17" })
  end

  it '.add multiple birthdays' do
    bday.add("Me", "1996-04-17")
    bday.add("Jen", "1994-08-19")
    expect(bday.birthday_list).to include(
      { name: "Me", dob: "1996-04-17" },
      { name: "Jen", dob: "1994-08-19" }
    )
  end

  # Show
  it 'Birthday responds to .show' do
    expect(bday).to respond_to(:show)
  end

  it '.show displays list of birthdays' do
    expect(bday.show).to eql(bday.birthday_list)
  end
end
