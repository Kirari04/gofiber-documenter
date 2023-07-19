<template>
    <div
        class="flex flex-col items-center"
        :data-theme="isLightTheme ? 'light' : 'dark'"
    >
        <div class="flex flex-col w-full max-w-screen-2xl">
            <NuxtLoadingIndicator />
            <Navbar />
            <div class="flex grow max-w-full">
                <main class="grow max-w-full">
                    <slot />
                </main>
            </div>
            <div id="alert" class="toast toast-top toast-end">
                <div
                    v-for="(alert, i) in alerts.filter((e) => e.isSuccess)"
                    :key="i"
                    class="alert alert-success"
                >
                    <Icon icon="success" />
                    {{ alert.msg }}
                </div>
            </div>
            <button
                @click="scrollToTop"
                aria-label="Scroll to top"
                :class="
                    scrollPos < 150
                        ? 'btn btn-neutral btn-circle fixed bottom-6 right-6 z-10 transition-all pointer-events-none scale-50 opacity-0'
                        : 'btn btn-neutral btn-circle fixed bottom-6 right-6 z-10 transition-all'
                "
            >
                <Icon icon="top" class="fill-current" />
            </button>
        </div>
    </div>
</template>

<script lang="ts" setup>
const isLightTheme = useCookie<boolean>("theme");
const scrollPos = ref(0);

const alerts = useState<
    Array<{
        msg: string;
        isSuccess: boolean;
    }>
>("alerts", () => []);

const onScroll = (e: any) => {
    scrollPos.value = window.scrollY;
};
const scrollToTop = () => {
    window.scrollTo(0, 0);
};
if (process.client) {
    scrollPos.value = window.scrollY;
    window.addEventListener("scroll", onScroll);
}
onBeforeRouteLeave(() => {
    window.removeEventListener("scroll", onScroll);
});
</script>
