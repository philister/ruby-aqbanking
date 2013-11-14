
module AqBanking
  class Transaction
    attr_accessor :transaction_id, :local_bank_code, :local_account_number,:remote_bank_code,:remote_account_number
    attr_accessor :date, :valuta_date,:amount,:local_name,:remote_name,:purpose,:category,:currency

    def initialize(hash)
      hash.each do |k,v|
          if k=="date" || k=="valuta_date"
            v=Date.parse(v)
          end
          instance_variable_set("@#{k}",v)
      end
    end

    def hash_string
      all = local_bank_code.to_s + local_account_number.to_s + remote_bank_code.to_s + remote_account_number.to_s + date.to_s + valuta_date.to_s + amount_cent.to_s + local_name.to_s + remote_name.to_s + purpose.to_s + category.to_s + currency.to_s
      Digest::MD5.hexdigest(all)
    end

    def amount_cent
      (amount * 100).to_i
    end

    def amount_euro
      amount
    end

  end
end

