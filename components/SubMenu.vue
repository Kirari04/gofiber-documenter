<template>
    <div class="relative shrink-0">
        <ul
            class="sticky top-4 menu bg-base-200 shrink-0 md:w-48 rounded-box mb-4 md:mb-0 md:ml-4"
        >
            <li v-for="menuItem in menuItems">
                <nuxtLink
                    :to="menuItem.href"
                    :class="fullPath === menuItem.href ? 'bg-base-300' : ''"
                >
                    {{ menuItem.name }}
                </nuxtLink>
            </li>
        </ul>
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
</script>
