desc "重新計算 Review Count"
# =>表示相依性，先在內建的環境找到Course，再去算有多少review，連續動作
# 將還沒counter_cache前同原始的review算回來
task :reset_review_count => :environment do 
    # p Course.count
    Course.all.each do |course|
        # model name.reset_counters(誰的id, 欄位名稱)
        Course.reset_counters(course.id, :reviews)
    end    

end