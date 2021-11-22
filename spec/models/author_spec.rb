describe "New author instance", type: :model do
    before do
        @author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
    end
    it "schould exist after creation and contain first_name, last_name and homepage" do
        expect(@author.first_name).to eq('Alan')
        expect(@author.last_name).to eq('Turing')
        expect(@author.homepage).to eq('http://wikipedia.org/Alan_Turing')
    end
    
    it "should have a method called name that returns the full name of the author" do
        expect(@author.name).to eq('Alan Turing')
    end
end