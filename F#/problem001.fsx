

let sumMultiples n =
    [1..n-1]
    |> List.filter (fun n -> n % 3 = 0 || n % 5 = 0)
    |> List.sum

printfn "%d" <| sumMultiples 1000