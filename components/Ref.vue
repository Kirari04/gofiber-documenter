<template>
    <a
        :href="href"
        :target="blank ? '_blank' : '_self'"
        class="link link-primary link-hover"
        rel="noopener noreferrer"
    >
        <slot />
    </a>
</template>

<script lang="ts" setup>
const { href } = defineProps<{
    href: string;
    blank: boolean;
}>();
</script>
