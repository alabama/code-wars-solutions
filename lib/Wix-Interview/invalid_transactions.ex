defmodule InvalidTransactions do
  @moduledoc """
    A transaction is possibly invalid if:

    the amount exceeds $1000, or;
    if it occurs within (and including) 60 minutes of another transaction with the same name in a different city.
    You are given an array of strings transaction where transactions[i] consists of comma-separated values representing the name, time (in minutes), amount, and city of the transaction.

    Return a list of transactions that are possibly invalid. You may return the answer in any order.



    Example 1:

    Input: transactions = ["alice,20,800,mtv","alice,50,100,beijing"]
    Output: ["alice,20,800,mtv","alice,50,100,beijing"]
    Explanation: The first transaction is invalid because the second transaction occurs within a difference of 60 minutes, have the same name and is in a different city. Similarly the second one is invalid too.
    Example 2:

    Input: transactions = ["alice,20,800,mtv","alice,50,1200,mtv"]
    Output: ["alice,50,1200,mtv"]
    Example 3:

    Input: transactions = ["alice,20,800,mtv","bob,50,1200,mtv"]
    Output: ["bob,50,1200,mtv"]


    Constraints:

    transactions.length <= 1000
    Each transactions[i] takes the form "{name},{time},{amount},{city}"
    Each {name} and {city} consist of lowercase English letters, and have lengths between 1 and 10.
    Each {time} consist of digits, and represent an integer between 0 and 1000.
    Each {amount} consist of digits, and represent an integer between 0 and 2000.
  """

  @spec invalid_transactions(transactions :: [String.t]) :: [String.t]
  def invalid_transactions(transactions) do
    transactions
    |> Enum.with_index()
    |> Enum.map(fn {transaction, index} ->
      transaction
      |> String.split(",")
      |> (fn [name, time, amount, city] ->
        %{index: index, name: name, time: String.to_integer(time), amount: String.to_integer(amount), city: city}
      end).()
    end)
    |> Enum.reduce({%{}, %{}}, fn transaction, {failed_map, acc} ->
      failed_map =
        failed_map
        |> is_amount_to_high(transaction)
        |> is_last_transaction_within_minutes(transaction, Map.get(acc, transaction.name, []))
      acc = Map.update(acc, transaction.name, [transaction], fn list -> [transaction] ++ list end)
      {failed_map, acc}
    end)
    |> (fn {failed_map, _} -> Map.values(failed_map) end).()
    |> Enum.map(fn %{name: name, time: time, amount: amount, city: city} -> "#{name},#{time},#{amount},#{city}" end)
  end

  defp is_amount_to_high(failed_map, %{amount: amount} = transaction) when amount >= 1000 do
    Map.put_new(failed_map, transaction.index , transaction)
  end
  defp is_amount_to_high(failed_map, _transaction), do: failed_map

  defp is_last_transaction_within_minutes(failed_map, _transaction, []), do: failed_map
  defp is_last_transaction_within_minutes(failed_map, transaction, list) do
    Enum.reduce(list, failed_map, fn prev_transaction, acc ->
      if transaction.city !== prev_transaction.city and abs(transaction.time - prev_transaction.time) <= 60 do
        acc
        |> Map.put_new(prev_transaction.index, prev_transaction)
        |> Map.put_new(transaction.index, transaction)
      else
        acc
      end
    end)
  end
end
