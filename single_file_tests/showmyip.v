import http
import json

struct IpResponse {
    status int
    message string
    ip string
}

fn main() {
    resp := http.get('https://hatter.ink/ip/ip.jsonp')
    ip_resp := json.decode(IpResponse, resp) or {
        println('error in decode: ' + resp)
        return
    }
    println('IP address: ' + ip_resp.ip)
}
