class Ckeditor::ApplicationController < Ckeditor.parent_controller.constantize
  layout Ckeditor.controller_layout

  before_action :find_asset, only: [:destroy]
  before_action :ckeditor_authorize!
  before_action :authorize_resource

  protected

  def respond_with_asset(asset)
    if params[:upload].blank?
      asset_response = Ckeditor::AssetResponse.new(asset, request)
      if asset.save
        render asset_response.success(config.relative_url_root) 
      else
        render asset_response.errors
      end
    else
      # This is someting, we have improved and written
      respond_with_json(asset)
    end
  end

  def respond_with_json(asset)
    asset.data = params[:upload]
    if asset.save
      render json: asset.json_response
    else
      render asset.errors
    end
  end
end
