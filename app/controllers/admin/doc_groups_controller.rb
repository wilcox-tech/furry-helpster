class DocGroupsController < ApplicationController
  # GET /doc_groups
  # GET /doc_groups.json
  def index
    @doc_groups = DocGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doc_groups }
    end
  end

  # GET /doc_groups/1
  # GET /doc_groups/1.json
  def show
    @doc_group = DocGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doc_group }
    end
  end

  # GET /doc_groups/new
  # GET /doc_groups/new.json
  def new
    @doc_group = DocGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doc_group }
    end
  end

  # GET /doc_groups/1/edit
  def edit
    @doc_group = DocGroup.find(params[:id])
  end

  # POST /doc_groups
  # POST /doc_groups.json
  def create
    @doc_group = DocGroup.new(params[:doc_group])

    respond_to do |format|
      if @doc_group.save
        format.html { redirect_to @doc_group, notice: 'Doc group was successfully created.' }
        format.json { render json: @doc_group, status: :created, location: @doc_group }
      else
        format.html { render action: "new" }
        format.json { render json: @doc_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doc_groups/1
  # PUT /doc_groups/1.json
  def update
    @doc_group = DocGroup.find(params[:id])

    respond_to do |format|
      if @doc_group.update_attributes(params[:doc_group])
        format.html { redirect_to @doc_group, notice: 'Doc group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doc_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doc_groups/1
  # DELETE /doc_groups/1.json
  def destroy
    @doc_group = DocGroup.find(params[:id])
    @doc_group.destroy

    respond_to do |format|
      format.html { redirect_to doc_groups_url }
      format.json { head :no_content }
    end
  end
end
