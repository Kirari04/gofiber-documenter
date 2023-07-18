<template>
    <div
        class="flex flex-col items-center w-full"
        :data-theme="isLightTheme ? 'light' : 'dark'"
    >
        <div class="flex flex-col w-full max-w-screen-xl2">
            <NuxtLoadingIndicator />
            <Navbar />
            <div class="flex">
                <aside class="hidden md:flex">
                    <Drawer :isMobile="false" />
                </aside>
                <main class="grow p-4">
                    <H1>Error</H1>
                </main>
            </div>
        </div>
    </div>
</template>

<script lang="ts" setup>
const isLightTheme = useCookie<boolean>("theme");
</script>
