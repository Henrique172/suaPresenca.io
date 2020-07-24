<div class="MainContainer">

    <div class="Parallax">
        // Conteúdo
    </div>

    <div class="Content">
        <div class="Content1">
            // Conteúdo
        </div>
    </div>
</div>
<style>
    .MainContainer {
        perspective: 1px;
        transform-style: preserve-3d;
        height: 100vh;
        overflow-x: hidden;
        overflow-y: scroll;
    }

    .Parallax {
        display: flex;
        flex: 1 0 auto;
        position: relative;
        height: 100vh;
        transform: translateZ(-1px) scale(2);
        z-index: -1;
    }

    .Content {
        display: block;
        position: relative;
        background-color: white;
        z-index: 1;
    }
</style>