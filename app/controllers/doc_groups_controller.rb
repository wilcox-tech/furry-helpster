class DocGroupsController < ApplicationController
  def show
    @doc_group = DocGroup.includes(:version).find(params[:id])
  end
end
