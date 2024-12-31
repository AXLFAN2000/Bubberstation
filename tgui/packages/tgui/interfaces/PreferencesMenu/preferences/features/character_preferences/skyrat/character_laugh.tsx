// THIS IS A SKYRAT UI FILE
import { Button, Stack } from '../../../../../../components';
import {
  FeatureChoiced,
  FeatureChoicedServerData,
  FeatureValueProps,
} from '../../base';
import { FeatureDropdownInput } from '../../dropdowns';

const FeatureLaughDropdownInput = (
  props: FeatureValueProps<string, string, FeatureChoicedServerData>,
) => {
  return (
    <Stack>
      <Stack.Item grow>
        <FeatureDropdownInput {...props} />
      </Stack.Item>
      <Stack.Item>
        <Button
          onClick={() => {
            props.act('play_laugh');
          }}
          icon="play"
          width="100%"
          height="100%"
        />
      </Stack.Item>
    </Stack>
  );
};

export const character_laugh: FeatureChoiced = {
  name: 'Character Laugh',
  component: FeatureLaughDropdownInput,
};
