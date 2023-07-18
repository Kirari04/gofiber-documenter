<template>
    <ul class="menu bg-base-200 shrink-0 rounded-box mb-4 md:mb-0 md:ml-4">
        <li v-for="menuItem in menuItems">
            <nuxtLink :to="menuItem.href"> {{ menuItem.name }} </nuxtLink>
        </li>
    </ul>
</template>

<script lang="ts" setup>
const { menuItems } = defineProps<{
    menuItems: Array<{
        href: string;
        name: string;
    }>;
}>();
</script>
