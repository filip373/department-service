class API::SyncController < ApplicationController

  def contracts
    @contracts = Contract.where(['updated_at >= ?', Time.at(params[:time].to_i)])
    Synchronization.make
    render 'api/contracts/index'
  end

end
