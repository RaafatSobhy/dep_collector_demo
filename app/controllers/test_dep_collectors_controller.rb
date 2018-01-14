class TestDepCollectorsController < ApplicationController
  before_action :set_test_dep_collector, only: [:show, :edit, :update, :destroy]

  # GET /test_dep_collectors
  # GET /test_dep_collectors.json
  def index
    @test_dep_collectors = TestDepCollector.all
  end

  # GET /test_dep_collectors/1
  # GET /test_dep_collectors/1.json
  def show
  end

  def proj_dep
    @dep = DepCollector::DependencyCommand.get_dependencies('diamond_shell', false)
    respond_to do |format|
      format.json {render :show, status: :ok}
    end
  end

  # GET /test_dep_collectors/new
  def new
    @test_dep_collector = TestDepCollector.new
  end

  # GET /test_dep_collectors/1/edit
  def edit
  end

  # POST /test_dep_collectors
  # POST /test_dep_collectors.json
  def create
    @test_dep_collector = TestDepCollector.new(test_dep_collector_params)

    respond_to do |format|
      if @test_dep_collector.save
        format.html {redirect_to @test_dep_collector, notice: 'Test dep collector was successfully created.'}
        format.json {render :show, status: :created, location: @test_dep_collector}
      else
        format.html {render :new}
        format.json {render json: @test_dep_collector.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /test_dep_collectors/1
  # PATCH/PUT /test_dep_collectors/1.json
  def update
    respond_to do |format|
      if @test_dep_collector.update(test_dep_collector_params)
        format.html {redirect_to @test_dep_collector, notice: 'Test dep collector was successfully updated.'}
        format.json {render :show, status: :ok, location: @test_dep_collector}
      else
        format.html {render :edit}
        format.json {render json: @test_dep_collector.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /test_dep_collectors/1
  # DELETE /test_dep_collectors/1.json
  def destroy
    @test_dep_collector.destroy
    respond_to do |format|
      format.html {redirect_to test_dep_collectors_url, notice: 'Test dep collector was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_test_dep_collector
    @test_dep_collector = TestDepCollector.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def test_dep_collector_params
    params.require(:test_dep_collector).permit(:os_name)
  end
end
