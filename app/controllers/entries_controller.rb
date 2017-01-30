class EntriesController < ApplicationController
  before_action :get_entry, only: [:show, :edit]

  def index
    @entries = Entry.all
  end

  def show
  end

  def new
    @entry = Entry.new
  end

  def edit
  end

  def create
    @entry = Entry.new

    if @entry.save
      redirect_to entries_path
    end
  end

  def update
    if @entry.update
      redirect_to entry_path
    end
  end

  private
    def get_entry
      @entry = Entry.find(params[:id])
    end
end
