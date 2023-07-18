<template>
    <div
        data-theme="dark"
        class="flex max-w-full justify-start overflow-auto items-center bg-base-300 p-4 relative rounded-box"
    >
        <div class="w-0">
            <ContentDoc :path="path" />
        </div>
        <button @click="copy" class="btn btn-square btn-ghost absolute right-2">
            <Icon icon="copy" />
        </button>
    </div>
</template>

<script lang="ts" setup>
const { path } = defineProps({
    path: String,
});

const copy = (e: Event) => {
    let id = "content" + `${path}.md`.replaceAll("/", ":");

    const el = Array.from(document.querySelectorAll("[data-content-id]")).find(
        (e) => e.getAttribute("data-content-id") == id
    );
    console.log("id");

    navigator.clipboard.writeText(el!.querySelector("pre")!.innerText).then(
        () => {
            inlineAlert("Copied", true);
        },
        () => {
            alert("Failed to copy");
        }
    );
};
</script>
