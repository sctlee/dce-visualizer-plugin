FROM dockersamples/visualizer

LABEL maintainer="Secret Lee" \
      io.daocloud.dce.plugin.name="dce-visualizer-plugin" \
      io.daocloud.dce.plugin.description="visualizer 是 Docker Swarm Mode 的可视化工具" \
      io.daocloud.dce.plugin.categories="game" \
      io.daocloud.dce.plugin.icon-src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMDAgMjAwIiBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDAgMCAyMDAgMjAwIj48Zz48cGF0aCBmaWxsPSIjRUZDMTAwIiBkPSJNMCAwaDIwMHYyMDBoLTIwMHoiLz48ZyBmaWxsPSIjZmZmIj48cGF0aCBkPSJNMjcuOCAxMjMuM3YtNy4yYzMuMy0yLjggNi40LTUuNSA5LjEtOCAyLjctMi41IDQuOC00LjcgNi4zLTYuMyAxLjUtMS43IDIuNi0zLjMgMy41LTQuOC44LTEuNSAxLjItMy4yIDEuMi00LjggMC0xLjMtLjUtMi40LTEuNS0zLjItMS0uOC0yLjQtMS4yLTQuMS0xLjItMS45IDAtMy40LjQtNC43IDEuMy0xLjIuOS0yLjIgMS45LTMgMy4xbC03LTQuOWMxLjctMi42IDMuOC00LjQgNi4yLTUuNSAyLjQtMS4xIDUuMy0xLjcgOC45LTEuNyA0LjQgMCA3LjggMSAxMC4zIDMuMSAyLjUgMiAzLjggNC45IDMuOCA4LjYgMCAyLjctLjUgNS4xLTEuNSA3LjFzLTIuNCA0LTQuMiA2Yy0xLjggMS45LTQuMSA0LjEtNi44IDYuNC0yLjcgMi4zLTQuNCAzLjctNSA0LjJoMTguOXY3LjloLTMwLjR6TTk3LjUgMTAyLjFjMCA3LjYtMS4zIDEzLjItNCAxNi44LTIuNyAzLjYtNi45IDUuNC0xMi41IDUuNHMtOS44LTEuOC0xMi41LTUuNGMtMi43LTMuNi00LTkuMS00LTE2LjdzMS4zLTEzLjEgNC0xNi43YzIuNy0zLjYgNi44LTUuNCAxMi41LTUuNHM5LjkgMS44IDEyLjUgNS40YzIuNyAzLjUgNCA5LjEgNCAxNi42em0tOC45IDBjMC01LjEtLjYtOC44LTEuOS0xMS4xLTEuMi0yLjQtMy4yLTMuNS01LjgtMy41LTIuNiAwLTQuNiAxLjItNS44IDMuNi0xLjIgMi40LTEuOCA2LjEtMS44IDExLjJzLjYgOC44IDEuOCAxMS4xYzEuMiAyLjQgMy4xIDMuNSA1LjggMy41IDIuNiAwIDQuNi0xLjIgNS44LTMuNiAxLjMtMi40IDEuOS02LjEgMS45LTExLjJ6TTEzMiAxMTYuM3Y3aC04LjN2LTdoLTIxLjN2LThsMjAuOC0yNy4zaDguOHYyNy45aDUuMnY3LjRoLTUuMnptLTguMi0yNGwtMTIuOCAxNi42aDEyLjh2LTE2LjZ6TTE3My45IDExMS44YzAgMy45LTEuNCA3LTQuMSA5LjEtMi43IDIuMi02LjYgMy4yLTExLjcgMy4yLTUgMC04LjktMS0xMS43LTMuMS0yLjgtMi4xLTQuMi01LjItNC4yLTkuMyAwLTIuNS43LTQuNyAyLjEtNi42IDEuNC0xLjkgMy4zLTMuNCA1LjctNC40LTIuMy0xLjEtNC0yLjUtNS4xLTQuMS0xLjEtMS42LTEuNy0zLjMtMS43LTUuMiAwLTMuNyAxLjMtNi42IDMuOS04LjUgMi42LTIgNi4zLTIuOSAxMC45LTIuOSA0LjUgMCA4LjEuOSAxMC44IDIuOCAyLjcgMS45IDQgNC44IDQgOC42IDAgMS4zLS4zIDIuNC0uOSAzLjUtLjYgMS4xLTEuNCAyLjEtMi4zIDIuOS0xIC45LTIuNCAxLjktNC40IDIuOSAyLjMgMS4xIDQuMSAyLjIgNS4yIDMuMiAxLjEgMSAyIDIuMSAyLjYgMy40LjYgMS41LjkgMi45LjkgNC41em0tOC42IDBjMC0xLjgtLjYtMy4yLTEuOC00LjQtMS4yLTEuMi0zLTIuMy01LjQtMy41LTIuNiAxLjEtNC40IDIuMy01LjUgMy41LTEuMSAxLjItMS43IDIuNi0xLjcgNC40IDAgMS42LjYgMi45IDEuNyAzLjlzMyAxLjUgNS41IDEuNSA0LjMtLjUgNS41LTEuNmMxLjEtLjkgMS43LTIuMiAxLjctMy44em0tLjgtMjAuMmMwLTEuMy0uNS0yLjUtMS41LTMuNHMtMi42LTEuNC00LjktMS40Yy0yLjQgMC00LjEuNS01IDEuNC0uOS45LTEuNCAyLTEuNCAzLjIgMCAuOS4yIDEuNy42IDIuMy40LjYgMS4xIDEuMyAyIDIgLjkuNyAyLjIgMS40IDMuNyAyIDIuNC0xIDQtMi4xIDUtMy4xIDEtLjkgMS41LTIgMS41LTN6Ii8+PC9nPjxwYXRoIGZpbGw9IiNGN0U2OTQiIGQ9Ik03My43IDI2LjlsLTIgNyA0LjcgNS42LTcuMy4zLTMuOCA2LjItMi42LTYuOC03LTEuOCA1LjctNC41LS41LTcuMyA2IDR6TTE0OS44IDMzLjdsLTMuMSA2LjYgMy43IDYuMy03LjItLjktNC45IDUuNS0xLjQtNy4yLTYuNi0yLjkgNi4zLTMuNS44LTcuMyA1LjMgNXoiLz48cGF0aCBmaWxsPSIjRjZFNjk1IiBkPSJNODkuNiAyMC42bC0xLjguOS0uMiAyLTEuNC0xLjUtMiAuNC45LTEuOC0uOS0xLjcgMS45LjMgMS40LTEuNC4zIDEuOXoiLz48cGF0aCBmaWxsPSIjRjdFNzk3IiBkPSJNMTIxLjUgMTguN2wtMS45IDEuNS4xIDIuNS0yLTEuNC0yLjMuOS43LTIuNC0xLjYtMS45IDIuNS0uMSAxLjMtMi4xLjggMi40eiIvPjxwYXRoIGZpbGw9IiNGQ0Y0RDEiIGQ9Ik0xMDQuOCAzNS42bC0xLjEuOC4xIDEuNC0xLjEtLjgtMS4yLjUuMy0xLjItLjgtMSAxLjMtLjEuNy0xLjIuNSAxLjN6Ii8+PHBhdGggZmlsbD0iI0ZGRkVGQyIgZD0iTTEwNy41IDU5LjlsLTQuNy40LTIuNCA0LjEtMS44LTQuNC00LjYtLjkgMy42LTMuMS0uNS00LjcgNCAyLjQgNC4zLTEuOS0xLjEgNC42eiIvPjxwYXRoIGZpbGw9IiNFQ0Q2NzAiIGQ9Ik0xNTMuOSAxOS40bC0uOS41djEuMWwtLjktLjctMSAuMy40LTEtLjYtLjhoMS4xbC42LS44LjMgMXoiLz48cGF0aCBmaWxsPSIjRjZERTY5IiBkPSJNMTU3LjcgNjEuNGwtMSAxLjEuMyAxLjQtMS4zLS43LTEuMy43LjItMS40LTEtMSAxLjQtLjIuNi0xLjMuNyAxLjN6Ii8+PHBhdGggZmlsbD0iI0VFQ0ExQiIgZD0iTTE4Ny4xIDI4LjdsLTUuMiAyLjktLjYgNS44LTQuMy00LTUuNyAxLjIgMi41LTUuMy0yLjktNS4xIDUuOC43IDQtNC4zIDEgNS43eiIvPjxwYXRoIGZpbGw9IiNFRUQyNEIiIGQ9Ik0xNzUuNiA1MWwtMS4yLjctLjEgMS4zLTEtLjktMS4zLjMuNi0xLjItLjctMS4yIDEuMy4yLjktMSAuMyAxLjN6Ii8+PHBhdGggZmlsbD0iI0ZBRUVCNCIgZD0iTTcwIDU3LjVsLTEuNiAxLjF2MmwtMS42LTEuMi0xLjkuNy43LTEuOS0xLjItMS42aDJsMS4xLTEuNi42IDEuOXoiLz48cGF0aCBmaWxsPSIjRjJEMzNEIiBkPSJNMzMuOSA1NS42bC0xLjguOC0uNCAyLTEuMy0xLjUtMiAuMyAxLTEuNy0uOS0xLjggMiAuNCAxLjQtMS40LjIgMnoiLz48cGF0aCBmaWxsPSIjRUVDQTFBIiBkPSJNMjkuOSAyNC42bC01LjcgMS42LTIgNS43LTMuMy01LTYtLjEgMy43LTQuNy0xLjgtNS43IDUuNyAyLjEgNC45LTMuNS0uMyA2eiIvPjwvZz48L3N2Zz4=" \
      io.daocloud.dce.plugin.vendor="Community" \
      io.daocloud.dce.plugin.required-dce-version=">=2.2.0" \
      io.daocloud.dce.plugin.nano-cpus-limit="500000000" \
      io.daocloud.dce.plugin.memory-bytes-limit="52428800"

RUN sed -i s/8080/80/g /app/server.js

RUN sed -i s/window.location.href/window.location.host+window.location.pathname/g app.js

COPY ./plugin.json /app/dist/plugin.json

EXPOSE 80
