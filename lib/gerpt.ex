
defmodule Gerpt do

  @doc """
    Takes a newline string and deduplicates occurances of a barcode with a count of occurances per barcode.
  """
  @spec deduplicate(String.t()) :: %{String.t() => non_neg_integer()}
  def deduplicate(text) do
    text
    |> String.split("\n", trim: true)
    |> Enum.frequencies()
  end

end

defmodule Gerpt.CLI do
  use ExCLI.DSL, escript: true

  name "gerpt"
  description "Grocy ERP Tools"
  long_description ~s"""
  Tools to interact with grocy.info instances.
  """

  option :verbose, count: true, aliases: [:v]

  command :dedup do
    description "Deduplicate barcodes into unique barcodes counted by occurances."
    run _context do
      :stdio
      |> IO.read(:all)
      |> Gerpt.deduplicate()
      |> Enum.sort()
      |> Enum.each(fn {barcode, count} ->
        IO.puts("#{barcode}\t#{count}")
      end)
    end
  end

end
