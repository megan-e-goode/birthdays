require 'birthday_list'
require 'date'

describe Birthday do
  let(:bday) {
    Birthday.new
  }

  # Add
  it 'create instance of Birthday' do
    expect(bday).to be_instance_of(Birthday)
  end

  # it '.add takes name and d.o.b' do
  #   expect {bday.add("Me", "1996-04-17")}.to_not raise_error
  # end

  it '.add multiple birthdays' do
    bday.add("Me", "1996-04-17")
    bday.add("Jen", "1994-08-19")
    expect(bday.birthday_list).to include(
      { name: "Me", dob: "1996-04-17" },
      { name: "Jen", dob: "1994-08-19" }
    )
  end

  # Show
  it '.show displays list of birthdays' do
    expect(bday.show).to eql(bday.birthday_list)
  end

  # Check
  # it 'Birthday responds to .check' do
  #   expect(bday).to respond_to(:check)
  # end

  it '.check todays date against birthdays including match' do
    today = Date.today.to_s.split("-")
    today_year = today[0].to_i

    bday.birthday_list.push(
      { name: "Me", dob: "1996-04-17" },
      { name: "Jen", dob: "1994-#{today[1]}-#{today[2]}" }
    )
    expect(bday.check).to eql("It's Jen's birthday today! They are #{
      today_year - 1994} years old!")
  end

  it '.check todays date against birthdays excluding match' do
    bday.birthday_list.push(
      { name: "Me", dob: "1996-04-17" },
      { name: "Jen", dob: "1994-08-19" }
    )
    expect(bday.check).to eql(false)
  end
end

#add how many years old they are.
