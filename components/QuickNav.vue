<template>
    <div class="flex justify-center gap-2">
        <NuxtLink
            v-if="index > 0"
            :to="menuItems[index - 1].href"
            class="btn btn-outline"
        >
            <Icon icon="left" />
            {{ menuItems[index - 1].name }}
        </NuxtLink>
        <NuxtLink
            v-if="index+1 < menuItems.length"
            :to="menuItems[index + 1].href"
            class="btn btn-outline"
        >
            {{ menuItems[index + 1].name }}
            <Icon icon="right" />
        </NuxtLink>
    </div>
</template>

<script lang="ts" setup>
const { menuItems } = defineProps<{
    menuItems: Array<{
        href: string;
        name: string;
    }>;
}>();

const { fullPath } = useRoute();

const index = menuItems.findIndex((e) => e.href === fullPath);
</script>
