require 'fizzbuzz'

describe "is_divisible_by_3" do
	it "should return 'true' when number is 3" do
		expect(is_divisible_by_3?(3)).to be_true 
	end
end

describe "is_divisible_by_3" do
	it "should return 'fizz' when number is 3" do
		expect(is_divisible_by_3?(3)).to eq('fizz')
	end
end

describe "is_divisible_by_3" do
	it "should return 'fizz' when number is_divisible_by_3" do
		expect(is_divisible_by_3?(6)).to eq('fizz')
	end
end

describe "is_divisible_by_5" do
	it "should return 'true' when number is 5" do
		expect(is_divisible_by_5?(5)).to be_true
	end
end

describe "is_divisible_by_5" do
	it "should return 'buzz' when number is 5" do
		expect(is_divisible_by_5?(5)).to eq('buzz')
	end
end

describe "is_divisible_by_5" do
	it "should return 'buzz' when number is divisible 5" do
		expect(is_divisible_by_5?(10)).to eq('buzz')
	end
end

describe "fizzbuzz" do
	it "should return 'true' when number is divisible by 3 and 5" do
		expect(fizzbuzz(30)).to eq('fizzbuzz')
	end
end

describe 'process' do
	it 'should return (1) when number is 1' do
		expect(process(1)).to eq(1)
	end
end
