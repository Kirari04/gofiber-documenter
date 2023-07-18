<template>
    <div
        class="flex flex-col items-center"
        :data-theme="isLightTheme ? 'light' : 'dark'"
    >
        <div class="flex flex-col w-full max-w-screen-xl2">
            <NuxtLoadingIndicator />
            <Navbar />
            <div class="flex grow">
                <aside class="hidden md:flex">
                    <Drawer :isMobile="false" />
                </aside>
                <main class="grow p-4">
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
        </div>
    </div>
</template>

<script lang="ts" setup>
const isLightTheme = useCookie<boolean>("theme");
const alerts = useState<
    Array<{
        msg: string;
        isSuccess: boolean;
    }>
>("alerts", () => []);
</script>
