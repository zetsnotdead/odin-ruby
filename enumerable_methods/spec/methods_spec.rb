require_relative '../methods'

describe Enumerable do
  let(:arr) {[1,2,3,4,5,6]}

  describe '#my_count' do
    context 'it returns a number' do
      it { expect(arr.my_count).to be_an_instance_of Fixnum }
    end

    context 'with non Enumerable object' do
      it { expect { 5.my_count }.to raise_error NoMethodError}
      it { expect { nil.my_count }.to raise_error NoMethodError}
      it { expect { "asd".my_count }.to raise_error NoMethodError}
    end

    context 'with no args given' do
      it 'returs the size' do
        expect(arr.my_count).to eql(arr.size)
      end
    end

    context 'with block given' do
      let(:block) { proc {|x| x.even? } }
      it 'counts only even numbers' do
        expect(arr.my_count(&block)).to eql 3
      end
    end

    context 'with number given' do
      it 'counts the number' do
        expect(arr.my_count(2)).to eql 1
      end

    end


  end

end