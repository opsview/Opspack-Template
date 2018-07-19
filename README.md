
# 'Technology Name' Opspack <version> [![Build Status](https://travis-ci.org/opsview/Opspack-Template.svg?branch=master)](https://travis-ci.org/opsview/Opspack-Template)

DESCRIPTION OF THE TECHNOLOGY MONITORED

## What You Can Monitor

DESCRIPTION OF THE WHAT THE OPSPACK MONITORS. SAME AS THE HOST TEMPLATE DESCRIPTION

## Service Checks

| Service Check | Description |
|:------------- |:----------- |
| SERVICE CHECK NAME | DESCRIPTION OF SERVICE CHECK |

## Prerequisites

ANY SPECIAL CONFIGURATION STEPS ON YOUR OPSVIEW MONITOR SYSTEM E.G. ENABLING API OR INSTALLING REQUIRED LIBRARIES

## Setup 'Host' for Monitoring

ANY CONFIGURATION THAT IS NEEDED ON THE HOST THAT IS BEING MONITORED
  
## Setup and Configuration

To configure and utilize this Opspack, you simply need to add the 'OPSPACK NAME' Opspack to your Opsview Monitor system.

#### Step 1: Add the host template

![Add host template](/docs/img/add_opspack_host.png?raw=true)

#### Step 2: Add and configure variables required for this host

VARIABLE_NAME - Description of variable

![Add variables](/docs/img/add_opspack_variables.png?raw=true)

#### Step 3: Reload and the system will now be monitored

![View Service Checks](/docs/img/view_opspack_service_checks.png?raw=true)

## Additional Options

LIST ANY OPTIONAL CONFIGURATION STEPS A USER MAY WANT TO USE FOR THE OPSPACK (e.g. configuring for SSL support)
