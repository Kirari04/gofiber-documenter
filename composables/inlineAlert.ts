export const inlineAlert = (msg: string, isSuccess: boolean, time=2000) => {
    const alerts = useState<
        Array<{
            msg: string;
            isSuccess: boolean;
        }>
    >("alerts", () => []);
    alerts.value.push({
        msg,
        isSuccess,
    });

    setTimeout(() => alerts.value.pop(), time);
};
