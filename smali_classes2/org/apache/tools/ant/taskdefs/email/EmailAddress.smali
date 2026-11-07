.class public Lorg/apache/tools/ant/taskdefs/email/EmailAddress;
.super Ljava/lang/Object;
.source "EmailAddress.java"


# instance fields
.field private address:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 13

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    const/16 v2, 0x3e

    const/16 v3, 0x3c

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v0, v1, :cond_2

    .line 55
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    .line 57
    :cond_1
    invoke-direct {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->trim(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->address:Ljava/lang/String;

    return-void

    :cond_2
    move v1, v4

    move v6, v1

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_0
    if-ge v1, v0, :cond_9

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x28

    if-ne v11, v12, :cond_4

    add-int/lit8 v8, v8, 0x1

    if-nez v9, :cond_8

    :goto_1
    add-int/lit8 v10, v1, 0x1

    :cond_3
    move v6, v1

    goto :goto_2

    :cond_4
    const/16 v12, 0x29

    if-ne v11, v12, :cond_5

    add-int/lit8 v8, v8, -0x1

    if-nez v6, :cond_8

    add-int/lit8 v9, v1, 0x1

    move v7, v1

    goto :goto_2

    :cond_5
    if-nez v8, :cond_7

    if-ne v11, v3, :cond_7

    if-nez v9, :cond_6

    move v7, v1

    :cond_6
    add-int/lit8 v9, v1, 0x1

    goto :goto_2

    :cond_7
    if-nez v8, :cond_8

    if-ne v11, v2, :cond_8

    add-int/lit8 v6, v0, -0x1

    if-eq v1, v6, :cond_3

    goto :goto_1

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    if-nez v6, :cond_a

    move v6, v0

    :cond_a
    if-nez v7, :cond_b

    move v7, v0

    .line 105
    :cond_b
    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->trim(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->address:Ljava/lang/String;

    .line 106
    invoke-virtual {p1, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->trim(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->name:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, v1

    if-le p1, v0, :cond_c

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->name:Ljava/lang/String;

    :cond_c
    return-void
.end method

.method private trim(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    add-int/lit8 v3, v0, -0x1

    .line 125
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x29

    const/16 v6, 0x20

    const/16 v7, 0x22

    const/4 v8, 0x1

    if-eq v4, v5, :cond_4

    .line 126
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_1

    if-nez p2, :cond_4

    .line 127
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_2

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_4

    .line 128
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v6, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    :goto_0
    add-int/lit8 v0, v0, -0x1

    move v3, v8

    .line 132
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x28

    if-eq v4, v5, :cond_7

    .line 133
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_5

    if-nez p2, :cond_7

    .line 134
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_7

    .line 135
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v6, :cond_6

    goto :goto_2

    :cond_6
    move v8, v3

    goto :goto_3

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    :goto_3
    if-nez v8, :cond_0

    .line 140
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->address:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->address:Ljava/lang/String;

    return-object v0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/EmailAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
