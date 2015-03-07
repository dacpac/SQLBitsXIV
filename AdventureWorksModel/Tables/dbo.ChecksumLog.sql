CREATE TABLE [dbo].[ChecksumLog]
(
    [id]                       INT            NOT NULL IDENTITY(1,1)
  , [model_uri_checksum]       CHAR(64)       NOT NULL
  , [audit_timestamp]          DATETIMEOFFSET NOT NULL CONSTRAINT [DF_ChecksumLog__audit_timestamp] DEFAULT (SYSDATETIMEOFFSET())
  , [audit_username]           SYSNAME        NOT NULL CONSTRAINT [DF_ChecksumLog__audit_username]  DEFAULT (SUSER_SNAME())
  , CONSTRAINT [PK_ChecksumLog] 
        PRIMARY KEY CLUSTERED ([id])
)
