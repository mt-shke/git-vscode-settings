  <details>
<summary>React-query</summary>

```js
const { isLoading, data } = useQuery(1, 2, { staleTime: 60 });

const queryClient = new QueryClient({
    defaultOptions: {
        queries: {
            refetchOnWindowFocus: false,
        },
    },
});
```

ReactQueryDevTools

```js
// <ReactQueryDevtools initialIsOpen={false} />
```

refetch

```js
// refetchOnWindowFocus => refetch on window focus
// const queryClient = new QueryClient({
//     defaultOptions: {
//         queries: {
//             refetchOnWindowFocus: false,

//         }
//     }
// })
```

staleTime

```js
const queryKey = ["feedbacks"];
// staleTime  => time until request is declared invalid
// const { isLoading, data } = useQuery(queryKey, () => getFeedback(), { staleTime: 30_000 });
```

cacheTime

```js
const { isLoading, data } = useQuery(
    ["signgleFeedback", id],
    () => getSingleFb(id),
    { cacheTime: 0 }
);
```

</details>
