describe 'World Cities API' do

  describe 'GET/' do
    it 'should respond to get' do
      get '/'
      expect(last_response.status).to eq 200
    end
  end

  describe 'GET /cities' do
    before { get '/cities' }

    it 'responds succesfuly' do
      expect(last_response.status).to eq 200
      expect(last_response.successful?).to be true
    end
  end

  describe 'GET /cities/1' do
    before { get '/cities/1' }

    it 'responds succesfuly' do
      expect(last_response.status).to eq 200
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
