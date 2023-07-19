<template>
    <div class="flex flex-col-reverse md:flex-row grow">
        <div class="flex flex-col grow">
            <H1>🧠 Ctx - {{ name }}</H1>
            <P>
                ClientHelloInfo contains information from a ClientHello message
                in order to guide application logic in the GetCertificate and
                GetConfigForClient callbacks. You can refer to the
                <Ref
                    href="https://golang.org/pkg/crypto/tls/#ClientHelloInfo"
                    :blank="true"
                    >ClientHelloInfo struct</Ref
                >
                documentation for more information on the returned struct.
            </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-1`" />
            <P>
                Example implementation of <B>{{ name }}</B>
            </P>
            <Code :path="`/snippets/ctx-${name.toLowerCase()}-2`" />
            <div class="flex basis-full"></div>
        </div>
        <SubMenu :menu-items="subMenuCtx" />
    </div>
    <div class="divider"></div>
    <QuickNav :menu-items="subMenuCtx" />
</template>

<script lang="ts" setup>
const name = "ClientHelloInfo";
const title = `Fiber | 🧠 Ctx - ${name}`;
const description =
    "ClientHelloInfo contains information from a ClientHello message in order to guide application logic in the GetCertificate and GetConfigForClient callbacks.";

useSeoMeta({
    title: title,
    ogTitle: title,
    description: description,
    ogDescription: description,
});
</script>
