<template>
    <nuxt-link
        aria-label="Logo"
        to="/"
        class="btn btn-ghost no-animation normal-case text-xl"
    >
        <Icon
            :icon="isLightTheme ? 'logolight' : 'logo'"
            class="h-full fill-current stroke-current"
        />
    </nuxt-link>
</template>

<script lang="ts" setup>
const isLightTheme = useCookie<boolean>("theme");
</script>
