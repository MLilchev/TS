class VisualisationController < ApplicationController


  def index
    #initialize veriables that access db columns for use with visualisation tools
    @tamount_state = Geodatum.pluck(:STATE).group_by(&:to_s).map { |a| [a[0].titleize, a[1].count] }.sort
    #https://stackoverflow.com/questions/9869870/how-to-get-a-single-columns-values-into-an-array
    @states = []
    @tamount = []
    @tamount_state.each do |element|
       @states << element[0]
       @tamount << element[1]
    end
    # calculate average tornado widhts per month
    @jan_raw = Event.where("month = 'January'").pluck
    @jan = []
    @jan_raw.each {|element| @jan << element[15]}
    @jan_avg = @jan.sum / @jan.count

    @feb_raw = Event.where("month = 'February'").pluck
    @feb = []
    @feb_raw.each {|element| @feb << element[15]}
    @feb_avg = @feb.sum / @feb.count

    @mar_raw = Event.where("month = 'March'").pluck
    @mar = []
    @mar_raw.each {|element| @mar << element[15]}
    @mar_avg = @mar.sum / @mar.count

    @apr_raw = Event.where("month = 'April'").pluck
    @apr = []
    @apr_raw.each {|element| @apr << element[15]}
    @apr_avg = @apr.sum / @apr.count

    @may_raw = Event.where("month = 'May'").pluck
    @may = []
    @may_raw.each {|element| @may << element[15]}
    @may_avg = @may.sum / @may.count

    #add width values
    @avg_width = []
    @avg_width << @jan_avg << @feb_avg << @mar_avg << @apr_avg << @may_avg

    #calculate average tornado lenghts per month

    @ljan_raw = Event.where("month = 'January'").pluck
    @ljan = []
    @ljan_raw.each {|element| @ljan << element[14]}
    @ljan_avg = @ljan.sum / @ljan.count

    @lfeb_raw = Event.where("month = 'February'").pluck
    @lfeb = []
    @lfeb_raw.each {|element| @lfeb << element[14]}
    @lfeb_avg = @lfeb.sum / @lfeb.count

    @lmar_raw = Event.where("month = 'March'").pluck
    @lmar = []
    @lmar_raw.each {|element| @lmar << element[14]}
    @lmar_avg = @lmar.sum / @lmar.count

    @lapr_raw = Event.where("month = 'April'").pluck
    @lapr = []
    @lapr_raw.each {|element| @lapr << element[14]}
    @lapr_avg = @lapr.sum / @lapr.count

    @lmay_raw = Event.where("month = 'May'").pluck
    @lmay = []
    @lmay_raw.each {|element| @lmay << element[14]}
    @lmay_avg = @lmay.sum / @lmay.count

    #add width values and convert to yards
    @avg_length = []
    @avg_length_rounded = []
    @avg_length << @ljan_avg/10*1760 << @lfeb_avg/10*1760 << @lmar_avg/10*1760 << @lapr_avg/10*1760 << @lmay_avg/10*1760
    @avg_length.each {|element| @avg_length_rounded << element.to_i}
  end
end
