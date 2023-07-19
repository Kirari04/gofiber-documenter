<template>
    <div class="collapse collapse-arrow border border-base-300 bg-base-200">
        <input type="checkbox" class="peer" />
        <div
            class="collapse-title text-xl font-medium flex items-center gap-2 flex-wrap truncate"
        >
            <slot name="title" />
        </div>
        <div class="collapse-content">
            <slot name="desc" />
        </div>
    </div>
</template>
