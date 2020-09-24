class SearchersController < ApplicationController
    def search
        @variety=(params[:q])
        @ir="https://irbank.net/search/"+@variety
        @kabutan="https://kabutan.jp/search/cse?q="+@variety
        @fuma="https://fumadata.com/search?corporate_name="+@variety
        @tdb="https://www.tdb.co.jp/service/u/1005.jsp?page_count=1&companyName="+@variety+"&companyNameAccord=1"
        @lighthouse="https://en-hyouban.com/search/?SearchWords="+@variety
        @yahoo="https://job.yahoo.co.jp/company/search/?name="+@variety
        render "index"
    end
end
