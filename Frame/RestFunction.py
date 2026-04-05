
import logging

import requests

log = logging.getLogger(__name__)
setup_is_https = "yes"

def send_sms(cluster_ip: str, send_to: str, message_from: int,
             message_service: str, response_code: int) -> bool:

    if setup_is_https == "yes":
        api_url = f"https://{cluster_ip}/services/SMSVendorSnapin/api/mock/newsms"
    else:
        api_url = f"http://{cluster_ip}/services/SMSVendorSnapin/api/mock/newsms"
    payload = {
        "to": send_to,
        "from": message_from,
        "messageService": message_service,
        "message": [{"type": "TEXT", "content": "messageFromPostman"}]
    }
    log.info(f"URL: {api_url}")
    log.info(f"Payload: {payload}")

    response = requests.post(
        api_url,
        json=payload,
        headers={"Content-Type": "application/json; charset=UTF-8"},
        verify=False
    )

    log.info(f"Response code is {response.status_code}")
    return True