<template>
    <ul class="menu bg-base-200 shrink-0 w-56 rounded-box ml-4">
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
