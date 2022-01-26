####################
#### ATTENTION ####
####################
###BEFORE RUNNING THIS SCRIPT PROVIDE BACKUP OF YOUR /DATABASE/ FOLDER and make some test runs on it first!
####################

###### SET REPLACEABLE OBJECTS ####
# I assume you will execute this script in /database/ folder.
# run it by typing to your terminal = >    " ./add_changeset.ps1 "
# it takes path to your objects and assigns it to a variable (path to folders with replaceable objects like packages, triggers, views)
$package_spec   = (Get-ChildItem package_spec).FullName  # because you are in /database/ folder it points to /database/package_spec folder
$package_body   = (Get-ChildItem package_body).FullName
$procedure      = (Get-ChildItem procedure).FullName 
$view           = (Get-ChildItem view).FullName 
$trigger        = (Get-ChildItem trigger).FullName 
###  ADD NEW VARIABLES HERE IF YOU HAVE OTHER FOLDERS WITH REPLACEABLE FILES ###

# merge all replaceable objects into one
$replaceable = $package_spec + $package_body + $procedure + $view + $trigger  # ADD OTHERS IF YOU HAVE MORE FOLDERS

###### SET NON - REPLACEABLE OBJECTS ####
#path to folders with NON - replaceable objects like tables or sequences
$table      = (Get-ChildItem table).FullName
$sequence   = (Get-ChildItem sequence).FullName
$index      = (Get-ChildItem index).FullName
$ref_constraint = (Get-ChildItem ref_constraint).FullName
###  ADD NEW VARIABLES HERE IF YOU HAVE OTHER FOLDERS WITH NON-REPLACEABLE FILES ###

# merge all NON-replaceable objects into one
$non_replaceable = $table + $sequence + $index + $ref_constraint # ADD OTHERS IF YOU HAVE MORE FOLDERS

###################################################
### CREATE CHANGESETS FOR REPLACEABLE  OBJECTS ####
###################################################
#do for each replaceable / LOOP
ForEach ($sqlfile in $replaceable) {
    # get original file content -raw is important to not lose your file formatting e.g. spaces and new lines
    $original_content = Get-content -Raw $sqlfile
    #take only filename without extension / we will use it as changeset ID
    $filename = [System.IO.Path]::GetFileNameWithoutExtension("$sqlfile")

    If ($original_content -imatch "--liquibase formatted sql") 
    {
        echo "File already has changeset - nothing to add!"
        $filename

    }
        else #add changesets
    {
        # `n means - add enter

        $space = ' '
        $new_line = "`n"
        #create liquibase changeset parameters
        $liquibase      = "--liquibase formatted sql" + $new_line
        $changeset      = "--changeset" + $space
        $username       = "liquibase"
        $changeset_id   = ":" + $filename + $space
        $runOnChange    = "runOnChange:true" + $space
        $context        = "context:liquibase_project_start" + $space
        $labels         = "labels:liquibase_project_start" + $new_line
        $comment        = "--comment: initial changeset for $filename" + "`n"

        # optional fake rollback. When running "liquibase rollback" command it will not touch your DB objects, but only remove rows from DATABASECHANGELOG tracking table.
        # when creating new changesets always add working rollback to your change and test it with "liquibase updateTestingRollback" command
        $rollback       = "--rollback: SELECT 1 FROM DUAL"  + "`n"    

        #add liquibase's changeset parameters on top of modified file
        $content_modified = $liquibase + $changeset +$username + $changeset_id + $runOnChange + $context + $labels + $comment + $rollback  + $original_content
        #set new content of modified file
        $content_modified | Set-Content $sqlfile
    }
    }

#############################
### NON-REPLACEABLE  OBJECTS ####
## yeah I know it could be done without so much redundacy. But had no time for this - it's TO DO :)
#############################

#do for each replaceable / LOOP
ForEach ($sqlfile in $non_replaceable) {
    # get original file content -raw is important to not lose your file formatting e.g. spaces and new lines
    $original_content = Get-content -Raw $sqlfile
    #take only filename without extension / we will use it as changeset ID
    $filename = [System.IO.Path]::GetFileNameWithoutExtension("$sqlfile")

    If ($original_content -imatch "--liquibase formatted sql") 
    {
        echo "File already has changeset - nothing to add!"
        $filename

    }
    else #add changesets
    {
        # `n means - add enter
        #take only filename without extension / we will use it as changeset ID
        $filename = [System.IO.Path]::GetFileNameWithoutExtension("$sqlfile")
        $space = ' '
        $new_line = "`n"
        #create liquibase changeset parameters
        $liquibase      = "--liquibase formatted sql" + $new_line
        $changeset      = "--changeset" + $space
        $username       = "liquibase"
        $changeset_id   = ":" + $filename + $space
        $runOnChange    = "runOnChange:false" + $space
        $context        = "context:liquibase_project_start" + $space
        $labels         = "labels:liquibase_project_start" + $new_line
        $comment        = "--comment: initial changeset for $filename" + "`n"

        # optional fake rollback. When running "liquibase rollback" command it will not touch your DB objects, but only remove rows from DATABASECHANGELOG tracking table.
        # when creating new changesets always add working rollback to your change and test it with "liquibase updateTestingRollback" command
        $rollback       = "--rollback: SELECT 1 FROM DUAL"  + "`n"    

        #add liquibase's changeset parameters on top of modified file
        $content_modified = $liquibase + $changeset +$username + $changeset_id + $runOnChange + $context + $labels + $comment + $rollback  + $original_content
        #set new content of modified file
        $content_modified | Set-Content $sqlfile
    }

}

