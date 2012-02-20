/*
 * Unix SMB/CIFS implementation.
 * server auto-generated by pidl. DO NOT MODIFY!
 */

#include "includes.h"
#include "ntdomain.h"
#include "librpc/gen_ndr/srv_file_id.h"


/* Tables */
static struct api_struct api_file_id_cmds[] = 
{
};

void file_id_get_pipe_fns(struct api_struct **fns, int *n_fns)
{
	*fns = api_file_id_cmds;
	*n_fns = sizeof(api_file_id_cmds) / sizeof(struct api_struct);
}

NTSTATUS rpc_file_id_init(const struct rpc_srv_callbacks *rpc_srv_cb)
{
	return rpc_srv_register(SMB_RPC_INTERFACE_VERSION, "file_id", "file_id", &ndr_table_file_id, api_file_id_cmds, sizeof(api_file_id_cmds) / sizeof(struct api_struct), rpc_srv_cb);
}

NTSTATUS rpc_file_id_shutdown(void)
{
	return rpc_srv_unregister(&ndr_table_file_id);
}