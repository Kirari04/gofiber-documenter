<template>
    <div class="relative shrink-0">
        <div class="flex max-h-[85vh] sticky top-4">
            <ul
                class="menu bg-base-200 flex-col flex-nowrap overflow-auto shrink-0 md:w-48 rounded-box mb-4 md:mb-0 md:ml-4"
            >
                <li class="max-w-full" v-for="menuItem in menuItems">
                    <nuxtLink
                        :title="menuItem.name"
                        class="flex w-full"
                        :to="menuItem.href"
                        :class="fullPath === menuItem.href ? 'bg-base-300' : ''"
                    >
                        <span class="truncate">
                            {{ menuItem.name }}
                        </span>
                    </nuxtLink>
                </li>
            </ul>
        </div>
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
