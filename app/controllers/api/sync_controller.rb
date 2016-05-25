class API::SyncController < ApplicationController

  def contracts
    @contracts = Contract.where(['updated_at >= ?', Time.at(params[:time].to_i)])
    render 'api/contracts/index'
  end
end
