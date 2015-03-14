#!/bin/bash
start() {
  # Ensure the volume home has the correct permissions, because this can cause errors
  chown ${SOFTWARE_NAME}.${SOFTWARE_NAME} -R /opt/${SOFTWARE_NAME}-home
  exec /sbin/setuser ${SOFTWARE_NAME} /bin/bash /opt/${SOFTWARE_NAME}/bin/start-${SOFTWARE_NAME}.sh
}