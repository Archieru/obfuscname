class GetNameController < ApplicationController
  def index
    seed = params[:seed] || DateTime.now.to_s
    hash = Digest::MD5.hexdigest(seed)
    name_seed = "0x#{hash[0,15]}".to_i(16)
    surname_seed = "0x#{hash[16,31]}".to_i(16)
    name_id = 1 + (name_seed % Name.all.count)
    surname_id = 1 + (surname_seed % Surname.all.count)
    return_name = Name.find(name_id).name
    return_surname = Surname.find(surname_id).surname
    render json: {seed: seed, name: "#{return_name} #{return_surname}"}, status: :ok
  end
end
