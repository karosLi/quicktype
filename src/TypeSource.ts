import { Readable } from "readable-stream";

import { JSONSourceData, JSONSchemaSourceData } from "@karosli/quicktype-core";
import { GraphQLSourceData } from "@karosli/quicktype-graphql-input";

export interface JSONTypeSource extends JSONSourceData<Readable> {
    kind: "json";
}

export interface SchemaTypeSource extends JSONSchemaSourceData {
    kind: "schema";
}

export interface GraphQLTypeSource extends GraphQLSourceData {
    kind: "graphql";
}

export type TypeSource = GraphQLTypeSource | JSONTypeSource | SchemaTypeSource;
