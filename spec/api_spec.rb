describe 'World Cities API' do

  describe 'GET/' do
    before { get '/' }

    it 'should respond to get' do
      expect(last_response.status).to eq 200
      expect(last_response.successful?).to be true
    end
  end

  describe 'GET /cities' do
    before { get '/cities' }

    it 'responds succesfuly' do
      expect(last_response.status).to eq 200
      expect(last_response.successful?).to be true
    end
  end

  describe 'GET /cities/:id' do
    before { get '/cities/1' }

    it 'responds succesfuly' do
      expect(last_response.status).to eq 200
      expect(last_response.successful?).to be true
    end
  end

  describe 'GET /cities/iso2/:iso2' do
    before { get '/cities/iso2/gr' }

    it 'responds succesfuly' do
      expect(last_response.status).to eq 200
      expect(last_response.successful?).to be true
    end

    it 'returns all the cities from the same country' do
      expect(JSON.parse(last_response.body).count).to be 30
    end
  end

  describe 'not found' do
    before { get '/wrong' }

    it 'responds unsuccesfuly' do
      expect(last_response.status).to eq 404
      expect(last_response.successful?).to be false
    end
  end
end
