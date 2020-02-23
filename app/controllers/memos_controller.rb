class MemosController < ApplicationController
    def index

    end

    def new
    
    end

    def create
        render plain: params["memos"]["title"] + ":" + params["memos"]["body"]
    end
end
